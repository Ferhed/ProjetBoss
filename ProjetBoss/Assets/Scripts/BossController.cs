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
    public GameObject xplosion;

    public float vitesseRotation = 50f;
    public int life = 100;
    private GameObject player;
    public float speed = 5f;
    public float chargeSpeedMultiplicator = 20f;
    public GameObject laser;
    public GameObject laserRear;
    public GameObject axeRotation;
    public GameObject[] elementToRotate;

    public float invincibilityDelay = 2f;
    float invincibilityStart = 0f;
    Animator animateur;

    [HideInInspector]public bool charging = false;
    [HideInInspector]public bool hasCharged = false;

    Vector3 mapCenter;

    public float minPlayerDistance = 1f;

    private bool otherBossKilled = false;
    bool isTourbiloling = false;

    // Use this for initialization
    void Awake () {
        player = GameObject.FindGameObjectWithTag("Player");
        manager = GameObject.Find("BossManager").GetComponent<BossManager>();

        mapCenter = new Vector3(GameObject.Find("MapManager").GetComponent<mapGenerator>().largeur / 2f, transform.position.y, GameObject.Find("MapManager").GetComponent<mapGenerator>().longueur / 2f);
        animateur = gameObject.GetComponentInChildren<Animator>();

        //ChangeColor(Color.gray);
    }

    PlayerLife playerLife;

    void Start()
    {
        playerLife = FindObjectOfType<PlayerLife>();
    }
    // Update is called once per frame
    void FixedUpdate () {
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

        Debug.DrawLine(elementToRotate[2].transform.position, elementToRotate[2].transform.position + elementToRotate[2].transform.forward, Color.red);
    }

    void IdleBehaviour()
    {

        if (life <= 0)
        {
            Badaboum(transform.position);
            manager.EndPhase1(gameObject);
        }
    }

    bool chargeCoroutine = false;

    void Phase1Behaviour()
    {
        if (life <= 0)
        {
            Badaboum(transform.position);
            manager.EndPhase1(gameObject);
        }

        if (!chargeCoroutine)
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
        if (!chargeCoroutine)
        {
            //charging = true;
            chargeCoroutine = true;
            StartCoroutine(ChargeCoroutine());
        }
    }

    IEnumerator ChargeCoroutine()
    {
        Vector3 positionPlayer = player.transform.position;
        Vector3 startPosition = transform.position;
        transform.LookAt(new Vector3(positionPlayer.x, transform.position.y, positionPlayer.z));
        
        yield return new WaitForSeconds(1.5f);

        charging = true;

        Ray ray = new Ray(transform.position + Vector3.up * 2, transform.forward);
        RaycastHit hit;

        bool canMove = !(Physics.Raycast(ray, out hit, 2f) && hit.transform.gameObject.tag == "Wall");

        while (canMove && charging && currentState == States.Phase1)
        {
            ray = new Ray(transform.position + Vector3.up * 2, transform.forward);
            canMove = !(Physics.Raycast(ray, out hit, 2f) && hit.transform.gameObject.tag == "Wall");

            if (!canMove)
            {
                AudioSource.PlayClipAtPoint(SoundManager.Instance.bumpSoundWall, transform.position, 1f);
            }

            transform.Translate(Vector3.forward * Time.deltaTime * speed * chargeSpeedMultiplicator);

            yield return new WaitForSeconds(0.01f);
        }

        charging = false;
        chargeCoroutine = false;

        GetComponent<Rigidbody>().velocity = Vector3.zero;

        if (!otherBossKilled)
        {
            SwitchState(States.Idle);
        }
        else
        {
            GetComponent<Rigidbody>().velocity = Vector3.zero;
        }
        //Debug.Log("velocity = " + GetComponent<Rigidbody>().velocity);

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

        setLaser();

    }

    void Phase2Behaviour()
    {
        if (life <= 0)
        {
            life = 100;
            SwitchState(States.Phase3);
        }
        else if(Vector3.Distance(this.transform.position,player.transform.position) < minPlayerDistance)
        {
            playerLife.Die();
        }

        if(isTourbiloling)
            axeRotation.transform.Rotate(0, vitesseRotation * Time.deltaTime, 0);
    }


    void Badaboum(Vector3 position)
    {
        GameObject go = Instantiate(xplosion, position, Quaternion.identity) as GameObject;
        ParticleSystem ps;
        ps = go.GetComponent<ParticleSystem>();
        ps.Play();
    }

    void Phase3Behaviour()
    {
        if (life <= 0)
        {
            Badaboum(transform.position);
            Destroy(gameObject);
        }
        else if (Vector3.Distance(this.transform.position, player.transform.position) < minPlayerDistance)
        {
            playerLife.Die();
        }

        if (isTourbiloling)
            axeRotation.transform.Rotate(0, vitesseRotation*Time.deltaTime, 0);
    }


    public void SwitchState(States s)
    {
        //Debug.Log("state  " + s);

        currentState = s;
        if(s!= States.Idle && s != manager.currentState)
        {
            manager.currentState = s;
        }
        switch (currentState)
        {
            case States.Idle:
                //ChangeColor(Color.gray);
                break;
            case States.Phase1:
                //ChangeColor(Color.white);
                break;
            case States.Phase2:
                manager.StartPhase2();
                //ChangeColor(Color.yellow);
                StartCoroutine(ReturnCenter());
                break;
            case States.Phase3:
                AudioSource.PlayClipAtPoint(SoundManager.Instance.explosionsSounds[0], transform.position, 3f);
                manager.StartPhase3();
                setLaser();
                //ChangeColor(Color.red);
                break;
        }
    }

    void setLaser()
    {
        if (animateur.GetBool("isCrouching") == false)
        {
            animateur.SetBool("isCrouching", true);
            animateur.SetTrigger("exitLaser");
        }
        Invoke("GoTourbilol", 2);
    }

    void GoTourbilol()
    {
        animateur.SetTrigger("isTourbiloling");
        isTourbiloling = true;
        Invoke("GoLaser", 1.5f);
    }

    void GoLaser()
    {
        laser.SetActive(true);
        laser.GetComponent<Lazer>().Actionned();

        if (currentState == States.Phase3)
        {
            //Debug.Log("laser");
            laserRear.SetActive(true);
            laserRear.GetComponent<Lazer>().Actionned();
        }
    }

    /*void ChangeColor(Color c)
    {
        //Transform[] trans = gameObject.GetComponentsInChildren<Transform>();
        foreach(Transform t in gameObject.transform)
        {
            t.GetComponent<MeshRenderer>().material.color = c;
        }
    }*/

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

        if(collision.gameObject.tag == "Boss")
        {
            //Debug.Log("kill");
        }
        if(currentState == States.Phase1)
        {

            if (collision.gameObject.tag == "Boss" && charging)
            {
                AudioSource.PlayClipAtPoint(SoundManager.Instance.bumpSoundBoss, transform.position, 1f);
                collision.gameObject.GetComponent<BossController>().Damage(1000);
                otherBossKilled = true;
                charging = false;
                chargeCoroutine = false;
            }else if(collision.gameObject.tag == "Player" && charging)
            {
                playerLife.Die();
            }
        }
        else if (collision.gameObject.tag == "Bomb" && collision.gameObject.GetComponent<BombScript>().isActivated && Time.time - invincibilityStart > invincibilityDelay)
        {
            life -= 40;
            invincibilityStart = Time.time;
        }
    }

    void OnCollisionStay(Collision collision)
    {
        if (currentState == States.Phase1)
        {

            if (collision.gameObject.tag == "Boss" && charging)
            {
                AudioSource.PlayClipAtPoint(SoundManager.Instance.bumpSoundBoss, transform.position, 1f);
                collision.gameObject.GetComponent<BossController>().Damage(1000);
                otherBossKilled = true;
                charging = false;
                chargeCoroutine = false;
                //Debug.Log(currentState);
            }
            else if (collision.gameObject.tag == "Player" && charging)
            {
                playerLife.Die();
            }
        }
        else if (collision.gameObject.tag == "Bomb" && collision.gameObject.GetComponent<BombScript>().isActivated && Time.time - invincibilityStart > invincibilityDelay)
        {
            life = 0;
            invincibilityStart = Time.time;
        }
    }
}
