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
        if (other)
        {
			CubeScript test = other.gameObject.GetComponent<CubeScript>();
            if (other.tag == "Ground" && test) 
			{
				test.rBomb = timer / timerMax; 
			}
        }
    }

    void OnTriggerStay(Collider other)
    {
        if (other)
        {
			CubeScript test = other.gameObject.GetComponent<CubeScript>();
            if (other.tag == "Ground" && test)
            {
                test.rBomb = timer / timerMax;
            }
        }

    }

}
