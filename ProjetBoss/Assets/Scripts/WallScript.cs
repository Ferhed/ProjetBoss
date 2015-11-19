using UnityEngine;
using System.Collections;

public class WallScript : MonoBehaviour {

	bool isColored;
	bool oldIsColored;
	Color firstColor;
	GameObject MM;

	// Use this for initialization
	void Start () {
		MM = GameObject.Find ("MapManager");
		isColored = MM.GetComponent<mapGenerator>().isColored;
		oldIsColored = isColored;
		pickStartColor(isColored);
	}
	
	// Update is called once per frame
	void Update () {
		isColored = MM.GetComponent<mapGenerator>().isColored;
		if (oldIsColored != isColored)
		{
			oldIsColored = isColored;
			pickStartColor(isColored);
		}
	}

	void pickStartColor (bool change) {
		float r = Random.Range(0f, 1f);
		float g = Random.Range(0f, 1f);
		float b = Random.Range(0f, 1f);
		if (change){firstColor = new Color (r,g,b);}
		else{firstColor = Color.white;}
		this.gameObject.GetComponent<Renderer> ().material.color = firstColor;
	}

	void OnCollisionEnter(Collision collision)
	{
		if (collision.gameObject.tag == "KZ"){Destroy(this.gameObject);}
	}
	
	void OnTriggerEnter(Collider other)
	{
		if (other.gameObject.tag == "KZ") {Destroy(this.gameObject);}
	}

}
