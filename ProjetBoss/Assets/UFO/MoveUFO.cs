using UnityEngine;
using System.Collections;

public class MoveUFO : MonoBehaviour {

	float speed;
	Vector3 move;
	Color randomCol;
	float r;
	float g;
	float b;
	float rVal;
	float gVal;
	float bVal;
	Transform soucoupe;
    Transform player;
    float dist;

	// Use this for initialization
	void Start () {
		r = g = b = 0.01f;
		speed = 0.25f;
		rVal = 0.1f;
		gVal = 0.05f;
		gVal = 0.025f;
		move = new Vector3 (speed,0,0);
		soucoupe = this.gameObject.transform.FindChild ("Soucoupe");
        this.gameObject.GetComponent<AudioSource>().Play();
        player = GameObject.FindGameObjectWithTag("Player").transform;
	}
	
	// Update is called once per frame
	void Update () {
        dist = Vector3.Distance(this.gameObject.transform.position, player.position)/100;
        this.gameObject.GetComponent<AudioSource>().volume = 1 - dist;
		if (r > 0.99f || r < 0.01f){rVal *= -1;}
		if (g > 0.99f || g < 0.01f){gVal *= -1;}
		if (b > 0.99f || b < 0.01f){bVal *= -1;}
		r += rVal;
		g += gVal;
		b += bVal;
		randomCol = new Color(r,g,b);
		soucoupe.GetComponent<Renderer>().material.color = randomCol;
		this.gameObject.transform.position += move;
		if (this.gameObject.transform.position.x > 100){Destroy(this.gameObject);}
	}
}
