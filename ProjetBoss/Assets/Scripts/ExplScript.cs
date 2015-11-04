using UnityEngine;
using System.Collections;

public class ExplScript : MonoBehaviour {

    int timer = 10;
	// Use this for initialization
	void Start () {
	    
	}
	
	// Update is called once per frame
	void Update () {
        timer--;
        if (timer < 0) { Destroy(this.gameObject); }
	}
}
