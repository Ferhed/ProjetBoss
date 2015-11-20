using UnityEngine;
using System.Collections;

public class BombScript : MonoBehaviour {

    public GameObject expl;
    public int timerMax;
    public int timer;

	float limitDeath = 1000f;
	float speed = 0.1f;
	GameObject boss;

	public bool littleBomb = false;

	public Vector3 startPos = new Vector3(12.5f,7f,12.5f);
	public Vector3 endPos;

	public bool isActivated = false;

	void Start () {
		boss = GameObject.FindGameObjectWithTag ("Boss");
		endPos = this.gameObject.transform.position;
		this.gameObject.transform.position = startPos;
        timer = timerMax;
	}
	
	public void hasCatch () 
	{
		isActivated = true;
		endPos = this.gameObject.transform.localPosition;
	}

	void Update () {
		limitDeath--;
		if (limitDeath<0){Destroy(this.gameObject);}
		float test = Vector3.Distance(this.gameObject.transform.position, endPos);
		if (test > 0.5f && !isActivated)
		{
			transform.position = Vector3.MoveTowards(this.gameObject.transform.position, endPos, speed);
		}
		else{isActivated = true;}

		if (isActivated) 
		{
			if(boss){Physics.IgnoreCollision(boss.GetComponent<Collider>(), this.gameObject.GetComponent<Collider>(), false);}
			timer--;
			if (timer<0)
			{
				if (!littleBomb)
				{
					Instantiate(expl, this.gameObject.transform.position, Quaternion.identity);
				}
				Destroy(this.gameObject);
			}
		}
		else
		{
			if(boss){Physics.IgnoreCollision(boss.GetComponent<Collider>(), this.gameObject.GetComponent<Collider>(), true);}
		}
	}

    void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.tag == "Boss" && isActivated){timer = 0;}
		if (collision.gameObject.tag == "KZ"){Destroy(this.gameObject);}
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Boss" && isActivated) {timer = 0;}
		if (other.gameObject.tag == "KZ"){Destroy(this.gameObject);}
    }

}
