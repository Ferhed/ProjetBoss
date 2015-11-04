using UnityEngine;
using System.Collections;

public class cameraController : MonoBehaviour {

    public float inclinaisonSpeed = 10f;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {


        if (transform.localRotation.x <= -0.5 &&  Input.GetAxis("R_YAxis_1")>0)
        {
            transform.Rotate(Input.GetAxis("R_YAxis_1")*Time.deltaTime*inclinaisonSpeed, 0, 0);
        }
        else if (transform.localRotation.x >= 0.5 && Input.GetAxis("R_YAxis_1") < 0)
        {
			transform.Rotate(Input.GetAxis("R_YAxis_1")*Time.deltaTime*inclinaisonSpeed, 0, 0);
        }
        else if (transform.localRotation.x < 0.5 && transform.localRotation.x > -0.5)
        {
			transform.Rotate(Input.GetAxis("R_YAxis_1")*Time.deltaTime*inclinaisonSpeed, 0, 0);
        }
	}
}
