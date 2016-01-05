using UnityEngine;
using System.Collections;

public class DeathShaderScript : MonoBehaviour {

	public bool isDead;
	float fadeNumber;
	float fading; //0-1
	Renderer rend;

	// Use this for initialization
	void Start () 
	{
		fadeNumber = 0.025f;
		isDead = false;
		fading = 0.0f;
	}
	
	// Update is called once per frame
	void Update () 
	{
		if (isDead)
		{
			fading += fadeNumber;
			GameObject[] listHand = GameObject.FindGameObjectsWithTag("HandPart"); 
			foreach(GameObject part in listHand)
			{
				rend = part.GetComponent<Renderer>();
				rend.material.SetFloat("_Treshold", fading);
			}
		}
	}
}
