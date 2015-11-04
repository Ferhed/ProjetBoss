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
	// Use this for initialization
	void Start () {
        timer = maxTimer;
	}
	
	// Update is called once per frame
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
                Instantiate(bomb, new Vector3(xRand, 0, zRand), Quaternion.identity);
            }
        }
	}
}
