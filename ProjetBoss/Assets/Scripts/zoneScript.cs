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
            if (other.tag == "Ground") { other.gameObject.GetComponent<CubeScript>().rBomb = timer / timerMax; }
        }
    }

    void OnTriggerStay(Collider other)
    {
        if (other)
        {
            if (other.tag == "Ground")
            {
                other.gameObject.GetComponent<CubeScript>().rBomb = timer / timerMax;
            }
        }

    }

}
