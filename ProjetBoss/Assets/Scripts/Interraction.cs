using UnityEngine;
using System.Collections;

public class Interraction : MonoBehaviour {

	AudioClip WallSSound;
	AudioSource source;
	GameObject snail;

	// Use this for initialization
	void Start () {
		snail = Resources.Load ("Prefabs/SAFILOS") as GameObject;
		WallSSound = Resources.Load ("SFX/WallSSound") as AudioClip;
	}
	
	// Update is called once per frame
	void Update () {

		if(Input.GetButtonDown("X_button_1"))
		{
			Ray ray = new Ray(Camera.main.transform.position,transform.forward);
			RaycastHit hit;
			if (Physics.Raycast(ray,out hit)) 
			{
				if(hit.transform.gameObject.tag == "Bouton")
				{
					hit.transform.GetComponent<Bouton>().utiliserBouton();
				}
				if(hit.transform.gameObject.name == "CubeWall 0-1-0")
				{
					source = hit.transform.gameObject.GetComponent<AudioSource> ();
					if (!source.isPlaying)
					{
						Instantiate(snail);
						source.clip = WallSSound;
						source.Play();
					}
				}
			}
		}
	}		
}
