using UnityEngine;
using System.Collections;

public class BombSpawn : MonoBehaviour {

    public GameObject bomb;
    public GameObject littleBomb;
    public float distRequis;

    [HideInInspector]public bool phase3 = false;

    public int maxTimer;
    public GameObject parentTile;
    public bool startspawn = false;
	public float YCompens;

	Vector3 SP;
	GameObject boss;
    GameObject[] tabTile;
    int timer;
    float xRand;
    float zRand;
    int Rand;
    int maxRand;

	void Start () {
        timer = maxTimer;
	}

	void chooseTile () {
		tabTile = GameObject.FindGameObjectsWithTag("Ground");
        bool stopSpawn = true;
        while (stopSpawn) 
        {
		    Rand = Random.Range(0, maxRand);
	        xRand = tabTile[Rand].transform.position.x;
	        zRand = tabTile[Rand].transform.position.z;
	        timer = maxTimer;
	        GameObject go;
            Vector3 posBomb =  new Vector3(xRand, 1, zRand);
            float disPos = Vector3.Distance(posBomb, boss.transform.position);
            if (disPos > distRequis)
            {
                //Debug.Log(disPos);
	            if (phase3)
	            {
		            go = (GameObject)Instantiate(bomb, posBomb, Quaternion.identity);
	            }
	            else
	            {
		            go = (GameObject)Instantiate(littleBomb, posBomb, Quaternion.identity);
	            }
	            go.GetComponent<BombScript>().startPos = SP;
                stopSpawn = false;
            }
        }
	}

	void Update () {
		if (startspawn)
		{
			boss = GameObject.FindGameObjectWithTag("Boss");
			if (boss)
			{
				SP = boss.transform.position;
				SP.y += YCompens;
			}
            timer--;
		}
        if (!parentTile)
		{
			int count = GameObject.FindGameObjectsWithTag("parentTile").Length;
			if (count > 0)
			{
				parentTile = GameObject.FindGameObjectsWithTag("parentTile")[0];
			}
		}
        if (timer < 0 && startspawn && parentTile && boss) 
        {
            maxRand = parentTile.transform.childCount;
            if (maxRand > 2)
            {
				chooseTile();
				chooseTile();
				chooseTile();
            }
			else if (maxRand > 1)
			{
				chooseTile();
				chooseTile();
			}
			else if (maxRand == 1)
			{
				chooseTile();
			}
        }
	}
}
