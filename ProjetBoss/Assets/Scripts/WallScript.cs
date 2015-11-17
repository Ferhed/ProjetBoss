using UnityEngine;
using System.Collections;

public class WallScript : MonoBehaviour {

	public float Ymax = -2000f;

	// Use this for initialization
	void Start () {
		float r = Random.Range(0f, 1f);
		float g = Random.Range(0f, 1f);
		float b = Random.Range(0f, 1f);
		this.gameObject.GetComponent<Renderer> ().material.color = new Color (r,g,b);
	}
	
	// Update is called once per frame
	void Update () {
		if(this.gameObject.transform.position.y < Ymax){Destroy(this.gameObject);}}
}
