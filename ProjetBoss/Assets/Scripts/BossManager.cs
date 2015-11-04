using UnityEngine;
using System.Collections;

public class BossManager : MonoBehaviour {

    public GameObject bossPrefab;

    GameObject[] bosses = new GameObject[2];

    [HideInInspector]public BossController.States currentState = BossController.States.Phase1;

    public float delay = 5f;
    float lastAct = 0;

	// Use this for initialization
	void Start () {

        mapGenerator map = GameObject.Find("MapManager").GetComponent<mapGenerator>();

        GameObject boss1 = Instantiate(bossPrefab, new Vector3(map.largeur/2-1f,5,map.longueur/2), Quaternion.identity) as GameObject;
        GameObject boss2 = Instantiate(bossPrefab, new Vector3(map.largeur / 2+1f, 5, map.longueur / 2), Quaternion.identity) as GameObject;

        bosses[0] = boss1;
        bosses[1] = boss2;

        BossBegining();
    }

    void BossBegining()
    {
        bosses[0].GetComponent<BossController>().SwitchState(BossController.States.Phase1);
        bosses[1].GetComponent<BossController>().SwitchState(BossController.States.Idle);
    }

    void Update()
    {
        switch (currentState)
        {
            case BossController.States.Phase1:
                if (Time.realtimeSinceStartup - lastAct >= delay)
                {
                    lastAct = Time.realtimeSinceStartup;

                    if (bosses[0].GetComponent<BossController>().GetState() == BossController.States.Phase1)
                    {
                        bosses[1].GetComponent<BossController>().SwitchState(BossController.States.Phase1);
                        bosses[0].GetComponent<BossController>().SwitchState(BossController.States.Idle);
                    }
                    else
                    {
                        bosses[0].GetComponent<BossController>().SwitchState(BossController.States.Phase1);
                        bosses[1].GetComponent<BossController>().SwitchState(BossController.States.Idle);
                    }
                }
                break;
        }  
    }
	
}
