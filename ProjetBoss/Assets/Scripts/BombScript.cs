using UnityEngine;
using System.Collections;

public class BombScript : MonoBehaviour {

    public GameObject expl;
    public int timerMax;
    public int timer;
	public int diffTime;

	float limitDeath = 1000f;
	float speed = 0.1f;
	GameObject boss;
	float distance = 0f;

	// start modif
	float height = 0f;
	public float hopeHeight = 1.25f;
	float timerThrow = 0f;
	//end modif

	public bool littleBomb = false;

	public Vector3 startPos = new Vector3(12.5f,7f,12.5f);
	public Vector3 endPos;

	public bool isActivated = false;

	void Start () {
		boss = GameObject.FindGameObjectWithTag ("Boss");
		endPos = this.gameObject.transform.position;
		this.gameObject.transform.position = startPos;
        timer = timerMax;
		int rand = Random.Range (0, diffTime);
		if (Random.Range (0, 2) == 1){rand *= -1;}
		timer += rand;
	}
	
	public void hasCatch () 
	{
		isActivated = true;
		endPos = this.gameObject.transform.localPosition;
	}

	void Update () {

		limitDeath--;
		if (limitDeath<0){Destroy(this.gameObject);}
<<<<<<< HEAD
		float dist = Vector3.Distance(this.gameObject.transform.position, endPos);
		if (dist > 0.5f && !isActivated)
=======
		distance = Vector3.Distance(this.gameObject.transform.position, endPos);
		if (distance > 0.5f && !isActivated)
>>>>>>> 05a5e8be91d5a579900b3f92473d29fc2b4ddb28
		{
			//transform.position = Vector3.MoveTowards(this.gameObject.transform.position, endPos, speed);
			// start modif
			var height = Mathf.Sin(Mathf.PI * timerThrow) * hopeHeight;
			transform.position = Vector3.Lerp(startPos, endPos, timerThrow) + Vector3.up * height; 
			timerThrow += Time.deltaTime /(distance/10f);
			//end modif
		}
<<<<<<< HEAD
		else
		{
			if(!isActivated){this.gameObject.GetComponent<Rigidbody>().velocity = Vector3.zero;}
			isActivated = true;
=======
		else{isActivated = true;}
		{
			//GetComponent<Rigidbody>().velocity = Vector3.zero;
>>>>>>> 05a5e8be91d5a579900b3f92473d29fc2b4ddb28
		}

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
