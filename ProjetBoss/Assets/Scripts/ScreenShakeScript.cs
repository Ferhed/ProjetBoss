using UnityEngine;
using System.Collections;

public class ScreenShakeScript : MonoBehaviour {

	public float shake = 0;
	public float shakeAmount = 0;
	float decreaseFactor = 1.0f;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if (shake > 0) 
		{
			Vector3 shakeMove = Random.insideUnitSphere * shakeAmount;
			shakeMove.y = 0.8f;
			this.gameObject.transform.localPosition = shakeMove;
			shake -= Time.deltaTime * decreaseFactor;
			
		} 
		else 
		{
			shake = 0.0f;
			shakeAmount = 0.0f;
		}
	}
}