using UnityEngine;
using System.Collections;

public class papaScript : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if (this.gameObject.transform.childCount == 0){Destroy(this.gameObject);}
	}
}
