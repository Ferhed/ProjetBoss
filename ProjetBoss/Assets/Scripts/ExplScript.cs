using UnityEngine;
using System.Collections;

public class ExplScript : MonoBehaviour {

    int timer = 10;


	void Start () {
	    
	}
	

	void Update () {
        timer--;
        if (timer < 0) { Destroy(this.gameObject); }
	}
}
