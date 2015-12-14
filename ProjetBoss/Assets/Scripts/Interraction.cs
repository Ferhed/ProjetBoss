using UnityEngine;
using System.Collections;

public class Interraction : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
		Debug.DrawLine(Camera.main.transform.position,transform.forward,Color.red);
		Debug.DrawRay(Camera.main.transform.position,transform.forward, Color.red);
		if(Input.GetButtonDown("B_button_1"))
		{
			
			
			Ray ray = new Ray(Camera.main.transform.position,transform.forward);
			RaycastHit hit;
			if (Physics.Raycast(ray,out hit)) {
				Debug.Log(hit.transform.gameObject.name);
				if(hit.transform.gameObject.tag == "Bouton")
				{
					hit.transform.GetComponent<Bouton>().utiliserBouton();

				}
			}
		}
	}		
}
