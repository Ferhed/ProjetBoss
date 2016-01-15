using UnityEngine;
using System.Collections;

public class ScriptBombColorMesh : MonoBehaviour {
	
	/*public enum option {Green,Red};
	public option bombColor;*/
	
	public bool isCenter;
	public Color bombColor;
	float r;
	float b;
	float slide;
	float slide2;
	
	// Use this for initialization
	void Start () {
		slide = 0.01f;
		slide2 = 0.02f;
		r = 0.0f;
		b = 0.0f;
		//this.gameObject.GetComponent<Renderer> ().material.color = bombColor;
	}
	
	// Update is called once per frame
	void Update () {
		r += slide;
		b += slide2;
		if (r > 1.0f || r < 0.0f){slide = -slide;}
		if (b > 1.0f || b < 0.0f){slide2 = -slide2;}
		if (isCenter)
		{
			bombColor = new Color(r,1,b,1);
		}
		this.gameObject.GetComponent<Renderer> ().material.color = bombColor;
	}
}
