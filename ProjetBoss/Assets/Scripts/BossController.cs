using UnityEngine;
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

    // Use this for initialization
    void Awake () {
        player = GameObject.FindGameObjectWithTag("Player");
        manager = GameObject.Find("BossManager").GetComponent<BossManager>();
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
            Destroy(gameObject);
        }
    }

    void Phase1Behaviour()
    {
        if (life <= 0)
        {
            life = 100;
            SwitchState(States.Phase2);
        }

        float step = speed * Time.deltaTime;
        Vector3 positionPlayer = player.transform.position;
        transform.position = Vector3.MoveTowards(transform.position, positionPlayer, step);
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
                ChangeColor(Color.yellow);
                break;
            case States.Phase3:
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
}
