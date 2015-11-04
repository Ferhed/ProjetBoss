using UnityEngine;
using System.Collections;

public class BombSpawn : MonoBehaviour {

    public GameObject bomb;
    public int maxTimer;
    public GameObject parentTile;
    public bool startspawn = false;

    GameObject[] tabTile;
    int timer;
    float xRand;
    float zRand;
    int Rand;
    int maxRand;

	void Start () {
        timer = maxTimer;
	}
	
	void Update () {
        if (!parentTile){parentTile = GameObject.FindGameObjectsWithTag("parentTile")[0];}
        timer--;
        if (timer < 0 && startspawn) 
        {
            maxRand = parentTile.transform.childCount;
            if (maxRand > 0)
            {
                tabTile = GameObject.FindGameObjectsWithTag("Ground");
                Rand = Random.Range(0, maxRand);
                xRand = tabTile[Rand].transform.position.x;
                zRand = tabTile[Rand].transform.position.z;
                timer = maxTimer;
                Instantiate(bomb, new Vector3(xRand, 1, zRand), Quaternion.identity);
            }
        }
	}
}
