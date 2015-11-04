using UnityEngine;
using System.Collections;

public class BombScript : MonoBehaviour {

    public GameObject expl;
    public int timerMax;
    public int timer;


	void Start () {
        timer = timerMax;
	}
	

	void Update () {
        timer--;
        if (timer<0)
        {
            Instantiate(expl,this.gameObject.transform.position,Quaternion.identity);
            Destroy(this.gameObject);
        }
	}

    void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.tag == "Boss"){timer = 0;}
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Boss") {timer = 0;}
    }

}
