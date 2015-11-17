using UnityEngine;
using System.Collections;

public class zoneScript : MonoBehaviour {

    float timer;
    float timerMax;


	void Start () {
        timer = this.gameObject.GetComponentInParent<BombScript>().timer;
        timerMax = this.gameObject.GetComponentInParent<BombScript>().timerMax;
	}
	
	void Update () {
        timer = this.gameObject.GetComponentInParent<BombScript>().timer;
        timerMax = this.gameObject.GetComponentInParent<BombScript>().timerMax;
	}

    void OnTriggerEnter(Collider other)
    {
<<<<<<< HEAD
        if (other)
        {
            if (other.tag == "Ground") { other.gameObject.GetComponent<CubeScript>().rBomb = timer / timerMax; }
        }
=======
		if (other.tag == "Ground" && other.gameObject.GetComponent<CubeScript>()) 
		{ 
			other.gameObject.GetComponent<CubeScript>().rBomb = timer / timerMax; 
		}
>>>>>>> 94f43a9cc29698c88605dbc957c691e51f40548e
    }

    void OnTriggerStay(Collider other)
    {
<<<<<<< HEAD
        if (other)
        {
            if (other.tag == "Ground")
            {
                other.gameObject.GetComponent<CubeScript>().rBomb = timer / timerMax;
            }
        }
=======
		if (other.tag == "Ground" && other.gameObject.GetComponent<CubeScript>()) 
		{
			other.gameObject.GetComponent<CubeScript>().rBomb = timer / timerMax; 
		}
>>>>>>> 94f43a9cc29698c88605dbc957c691e51f40548e
    }

}
