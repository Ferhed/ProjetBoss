using UnityEngine;
using System.Collections;

public class BombSpawn : MonoBehaviour {

    public GameObject bomb;
    public GameObject littleBomb;

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
		Rand = Random.Range(0, maxRand);
		xRand = tabTile[Rand].transform.position.x;
		zRand = tabTile[Rand].transform.position.z;
		timer = maxTimer;
		GameObject go;
		if (phase3)
		{
			go = (GameObject)Instantiate(bomb, new Vector3(xRand, 1, zRand), Quaternion.identity);
		}
		else
		{
			go = (GameObject)Instantiate(littleBomb, new Vector3(xRand, 1, zRand), Quaternion.identity);
		}
		go.GetComponent<BombScript>().startPos = SP;
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
		}
        if (!parentTile)
		{
			int count = GameObject.FindGameObjectsWithTag("parentTile").Length;
			if (count > 0)
			{
				parentTile = GameObject.FindGameObjectsWithTag("parentTile")[0];
			}
		}
        timer--;
        if (timer < 0 && startspawn && parentTile) 
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
