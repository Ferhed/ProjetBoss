using UnityEngine;
using System.Collections;

public class zoneScript : MonoBehaviour {

    float timer;
    float timerMax;

    BombScript bomb;

	void Start () {

        bomb = GetComponentInParent<BombScript>();

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
            } else if (other.tag == "Player")
            {
                bomb.playerInZone = true;
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

    void OnTriggerExit(Collider other)
    {
        if (other.tag == "Player")
        {
            bomb.playerInZone = false;
        }
    }

}
