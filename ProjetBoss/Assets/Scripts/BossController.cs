﻿using UnityEngine;
using System.Collections;

public class BossController : MonoBehaviour {

    public enum States {
        Idle,
        Phase1,
        Phase2,
        Phase3
    }

    public States currentState = States.Idle;

    BossManager manager;

    public int life = 100;
    private GameObject player;
    public float speed = 5f;
    public float chargeSpeedMultiplicator = 20f;

    public float invincibilityDelay = 2f;
    float invincibilityStart = 0f;

    [HideInInspector]public bool charging = false;
    [HideInInspector]public bool hasCharged = false;

    Vector3 mapCenter;

    private bool otherBossKilled = false;

    // Use this for initialization
    void Awake () {
        player = GameObject.FindGameObjectWithTag("Player");
        manager = GameObject.Find("BossManager").GetComponent<BossManager>();

        mapCenter = new Vector3(GameObject.Find("MapManager").GetComponent<mapGenerator>().largeur / 2f, transform.position.y, GameObject.Find("MapManager").GetComponent<mapGenerator>().longueur / 2f);

        ChangeColor(Color.gray);
    }
	
	// Update is called once per frame
	void Update () {
        switch (currentState)
        {
            case States.Idle:
                IdleBehaviour();
                break;
            case States.Phase1:
                Phase1Behaviour();
                break;
            case States.Phase2:
                Phase2Behaviour();
                break;
            case States.Phase3:
                Phase3Behaviour();
                break;
        }
    }

    void IdleBehaviour()
    {
        if (life <= 0)
        {
            manager.EndPhase1(gameObject);
        }
    }

    void Phase1Behaviour()
    {
        if (life <= 0)
        {
            manager.EndPhase1(gameObject);
        }

        if (!charging)
        {
            Vector3 positionPlayer = player.transform.position;
            if (Vector3.Distance(transform.position, new Vector3(positionPlayer.x, transform.position.y, positionPlayer.z)) > manager.stopDistance)
            {
                float step = speed * Time.deltaTime;
                transform.position = Vector3.MoveTowards(transform.position, new Vector3(positionPlayer.x, transform.position.y, positionPlayer.z), step);
            }
            transform.LookAt(new Vector3(positionPlayer.x, transform.position.y, positionPlayer.z));
        }
    }

    public void Charge()
    {
        if (!charging)
        {
            charging = true;
            StartCoroutine(ChargeCoroutine());
        }
    }

    IEnumerator ChargeCoroutine()
    {
        Vector3 positionPlayer = player.transform.position;
        Vector3 startPosition = transform.position;
        transform.LookAt(new Vector3(positionPlayer.x, transform.position.y, positionPlayer.z));

        yield return new WaitForSeconds(1.5f);
        
        Ray ray = new Ray(transform.position, transform.forward);
        RaycastHit hit;

        bool canMove = !(Physics.Raycast(ray, out hit, 2f) && hit.transform.gameObject.tag == "Wall");

        while (canMove)
        {
            ray = new Ray(transform.position, transform.forward);
            canMove = !(Physics.Raycast(ray, out hit, 2f) && hit.transform.gameObject.tag == "Wall");

            transform.Translate(Vector3.forward * Time.deltaTime * speed * chargeSpeedMultiplicator);
            yield return new WaitForSeconds(0.01f);
        }
        charging = false;
        if (!otherBossKilled)
        {
            SwitchState(States.Idle);
        }
    }

    IEnumerator ReturnCenter()
    {
        charging = true;

        Vector3 startPosition = transform.position;
        transform.LookAt(new Vector3(mapCenter.x, transform.position.y, mapCenter.z));

        yield return new WaitForSeconds(1.5f);

        while (transform.position.x != mapCenter.x && transform.position.z != mapCenter.z)
        {
            float step = speed * Time.deltaTime * chargeSpeedMultiplicator;
            mapCenter.y = transform.position.y;
            transform.position = Vector3.MoveTowards(transform.position, mapCenter, step);
            yield return new WaitForSeconds(0.01f);
        }

        charging = false;

        if (!otherBossKilled)
        {
            SwitchState(States.Idle);
        }
    }

    void Phase2Behaviour()
    {
        if (life <= 0)
        {
            life = 100;
            SwitchState(States.Phase3);
        }
    }

    void Phase3Behaviour()
    {
        if (life <= 0)
        {
            Destroy(gameObject);
        }
    }


    public void SwitchState(States s)
    {
        Debug.Log("state  " + s);

        currentState = s;
        if(s!= States.Idle && s != manager.currentState)
        {
            manager.currentState = s;
        }
        switch (currentState)
        {
            case States.Idle:
                ChangeColor(Color.gray);
                break;
            case States.Phase1:
                ChangeColor(Color.white);
                break;
            case States.Phase2:
                manager.StartPhase2();
                ChangeColor(Color.yellow);
                StartCoroutine(ReturnCenter());
                break;
            case States.Phase3:
                manager.StartPhase3();
                ChangeColor(Color.red);
                break;
        }
    }

    void ChangeColor(Color c)
    {
        //Transform[] trans = gameObject.GetComponentsInChildren<Transform>();
        foreach(Transform t in gameObject.transform)
        {
            t.GetComponent<MeshRenderer>().material.color = c;
        }
    }

    public States GetState()
    {
        return currentState;
    }
    
    public void Damage(int n)
    {
        life -= n;
    }

    void OnCollisionEnter(Collision collision)
    {

        if(currentState == States.Phase1)
        {
            if(collision.gameObject.tag == "Boss" && charging)
            {
                collision.gameObject.GetComponent<BossController>().Damage(1000);
                otherBossKilled = true;
            }
        }
        else if (collision.gameObject.tag == "Bomb" && collision.gameObject.GetComponent<BombScript>().isActivated && Time.time - invincibilityStart > invincibilityDelay)
        {
            life = 0;
            invincibilityStart = Time.time;
        }
    }
}
