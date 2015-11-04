using UnityEngine;
using System.Collections;

public class boids : MonoBehaviour {

	public Vector3 position = Vector3.zero;
	public Vector3 velocity = Vector3.zero;
	public Vector3 target = Vector3.zero;

	public float size = 1f;
	public float speed = 1f;
	public float friction = 1f;

	public float scaleCohesion = 1f;
	public float scaleSeparation = 1f;
	public float scaleAlignement = 1f;
	public float scaleTarget = 1f;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	public void ApplyVelocity(Vector3 newVelocity)
	{
		velocity += newVelocity;
		position += velocity*speed/size;
		transform.position = position;
		velocity *= friction;
	}

	public void SetSize(float newSize)
	{
		size = newSize;
		transform.localScale = Vector3.one * size * 2f;
	}

	public void SetPosition(Vector3 newPosition)
	{
		position = newPosition;
		transform.position = position;
	}
}
