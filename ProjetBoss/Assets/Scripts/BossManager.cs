﻿using UnityEngine;
using System.Collections;

public class BossManager : MonoBehaviour {

    static BossManager instance;
    public static BossManager Instance
    {
        get
        {
            return instance;
        }
    }
    void Awake()
    {
        instance = this;
    }
    public GameObject bossPrefab;
    public StartExpl startExpl;

    GameObject[] bosses = new GameObject[2];

    [HideInInspector]public BossController.States currentState = BossController.States.Idle;

    public float delay = 5f;
    float lastAct = 0;

	public float stopDistance = 2f;

    GameObject currentPhase1;

	// Use this for initialization
	void Start () {

        mapGenerator map = GameObject.Find("MapManager").GetComponent<mapGenerator>();

        GameObject boss1 = Instantiate(bossPrefab, new Vector3(3,3,22), Quaternion.identity) as GameObject;
        boss1.transform.localEulerAngles = new Vector3(0, 180, 0);
        GameObject boss2 = Instantiate(bossPrefab, new Vector3(21,3,22), Quaternion.identity) as GameObject;
        boss2.transform.localEulerAngles = new Vector3(0, 180, 0);

        bosses[0] = boss1;
        bosses[1] = boss2;

        currentPhase1 = bosses[0];

        //BossBegining();
    }

    public void BossBegining()
    {
        AudioSource.PlayClipAtPoint(SoundManager.Instance.bossValentin, bosses[0].transform.position, 1f);
        AudioSource.PlayClipAtPoint(SoundManager.Instance.bossPierre, bosses[1].transform.position, 1f);

        Invoke("BeginMusic", 0.7f);

        Invoke("bossWillBegining",2f);
		
		UIManager.Instance.launchUI("Mecanix & Patafix",20);
    }

    void BeginMusic()
    {
        SoundManager.Instance.PlaySound(gameObject, SoundManager.Instance.bossMusic, 0.25f);
    }

	void bossWillBegining()
	{
		bosses[0].GetComponent<BossController>().SwitchState(BossController.States.Phase1);
		bosses[1].GetComponent<BossController>().SwitchState(BossController.States.Idle);
		currentState = BossController.States.Phase1;
	}


    void Update()
    {
        switch (currentState)
        {
            case BossController.States.Phase1:
                Phase1Behaviour();
                break;
        }  
    }

    void Phase1Behaviour()
    {
        if(!bosses[0] || !bosses[1])
        {
            bosses[1].GetComponent<BossController>().SwitchState(BossController.States.Phase2);
        }
        if (Time.realtimeSinceStartup - lastAct >= delay)
        {
            lastAct = Time.realtimeSinceStartup;

            currentPhase1.GetComponent<BossController>().SwitchState(BossController.States.Phase1);

        }
        else if (Time.realtimeSinceStartup - lastAct >= delay - 3)
        {
            if (bosses[0].GetComponent<BossController>().GetState() == BossController.States.Phase1 && bosses[0].GetComponent<BossController>().hasCharged == false)
            {
                bosses[0].GetComponent<BossController>().Charge();
                bosses[0].GetComponent<BossController>().hasCharged = true;
                currentPhase1 = bosses[1];
                currentPhase1.GetComponent<BossController>().hasCharged = false;
            }
            else if (bosses[1].GetComponent<BossController>().GetState() == BossController.States.Phase1 && bosses[1].GetComponent<BossController>().hasCharged == false)
            {
                bosses[1].GetComponent<BossController>().Charge();
                bosses[1].GetComponent<BossController>().hasCharged = true;
                currentPhase1 = bosses[0];
                currentPhase1.GetComponent<BossController>().hasCharged = false;
            }
        }
    }

    public GameObject GetCurrentBoss()
    {
        return bosses[0] ? bosses[0] : bosses[1];
    }

    public void EndPhase1(GameObject deadBoss)
    {
        if(deadBoss == bosses[0])
        {
            bosses[1].GetComponent<BossController>().SwitchState(BossController.States.Phase2);
        }
        else
        {
            bosses[0].GetComponent<BossController>().SwitchState(BossController.States.Phase2);
        }
        Destroy(deadBoss);
    }
	

    public void StartPhase2()
    {
        startExpl.StartPhase2();
    }

    public void StartPhase3()
    {
        startExpl.StartPhase3();
    }

}