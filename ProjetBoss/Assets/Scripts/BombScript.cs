using UnityEngine;
using System.Collections;

public class BombScript : MonoBehaviour {

    public GameObject expl;
    public int timer;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        timer--;
        if (timer<0)
        {
            Instantiate(expl,this.gameObject.transform.position,Quaternion.identity);
            Destroy(this.gameObject);
        }
	}
}
