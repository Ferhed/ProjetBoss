using UnityEngine;
using System.Collections;

public class PopUFO : MonoBehaviour {

	public bool canSpawn;
	GameObject UFO;
	public int timer;
	bool isSpawn;

	// Use this for initialization
	void Start () {
        canSpawn = false;
		timer = Random.Range(1000,2000);
		isSpawn = false;
		UFO = Resources.Load ("Prefabs/UFO") as GameObject;
	}
	
	// Update is called once per frame
	void Update () 
	{
		if (!isSpawn && canSpawn)
		{
			timer--;
			if (timer < 0)
			{
				Instantiate(UFO);
				isSpawn = true;
			}
		}
	}
}
