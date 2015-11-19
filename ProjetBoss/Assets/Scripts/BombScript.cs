using UnityEngine;
using System.Collections;

public class BombScript : MonoBehaviour {

    public GameObject expl;
    public int timerMax;
    public int timer;

	float speed = 0.1f;

	public bool littleBomb = false;

	public Vector3 startPos = new Vector3(12.5f,7f,12.5f);
	public Vector3 endPos;

	public bool isActivated = false;

	void Start () {
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
		float test = Vector3.Distance(this.gameObject.transform.position, endPos);
		if (test > 0.5f && !isActivated)
		{
			transform.position = Vector3.MoveTowards(this.gameObject.transform.position, endPos, speed);
		}
		else{isActivated = true;}

		if (isActivated) 
		{
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
