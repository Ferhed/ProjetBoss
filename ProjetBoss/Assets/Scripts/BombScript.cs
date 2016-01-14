using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class BombScript : MonoBehaviour {

    public GameObject expl;
    public float timerMax = 5f;
    public float timer;
	public float diffTime;

	float limitDeath = 1000f;
	float speed = 0.1f;
	GameObject boss;
	float distance = 0f;
    public GameObject fxBomb;

	// start modif
	float height = 0f;
	public float hopeHeight = 1.25f;
	float timerThrow = 0f;
	//end modif

	public bool littleBomb = false;

	public Vector3 startPos = new Vector3(12.5f,7f,12.5f);
	public Vector3 endPos;

	public bool isActivated = false;

    public bool playerInZone = false;

    PlayerLife playerLife;

	void Start () {
        playerLife = FindObjectOfType<PlayerLife>();
        boss = GameObject.FindGameObjectWithTag ("Boss");
		endPos = this.gameObject.transform.position;
		this.gameObject.transform.position = startPos;
        timer = timerMax;
		float rand = Random.Range (0, diffTime);
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

		distance = Vector3.Distance(this.gameObject.transform.position, endPos);
		if (distance > 0.5f && !isActivated)
		{
			var height = Mathf.Sin(Mathf.PI * timerThrow) * hopeHeight;
			transform.position = Vector3.Lerp(startPos, endPos, timerThrow) + Vector3.up * height; 
			timerThrow += Time.deltaTime /(distance/10f);
            if (!isActivated) { this.gameObject.GetComponent<Rigidbody>().velocity = Vector3.zero; }

		}
		else
		{
			//GetComponent<Rigidbody>().velocity = Vector3.zero;
			if(!isActivated){this.gameObject.GetComponent<Rigidbody>().velocity = Vector3.zero;}
			isActivated = true;
		}

		if (isActivated) 
		{
			if(boss){Physics.IgnoreCollision(boss.GetComponent<Collider>(), this.gameObject.GetComponent<Collider>(), false);}
			timer-= Time.deltaTime;
			if (timer<=0)
			{
                int n = Random.Range(0, SoundManager.Instance.explosionsSounds.Length);

                AudioSource.PlayClipAtPoint(SoundManager.Instance.explosionsSounds[n], transform.position, 1f);
                Instantiate(fxBomb, transform.position+Vector3.up,Quaternion.identity);

                if (playerInZone)
                {
                    playerLife.Die();
                }

				if (!littleBomb)
				{
                    Instantiate(expl, this.gameObject.transform.position, Quaternion.identity);

				}
				GameObject Cam = GameObject.FindGameObjectWithTag("MainCamera");
				float distShake = Mathf.Cos(Vector3.Distance(this.gameObject.transform.position,Cam.transform.position)/20);
				if (Cam.GetComponent<ScreenShakeScript>().shakeAmount < distShake)
				{
					Cam.GetComponent<ScreenShakeScript>().shakeAmount = distShake/2;
					Cam.GetComponent<ScreenShakeScript>().shake = 0.8f;
				}
                GameObject go = Instantiate(fxBomb, this.gameObject.transform.position, Quaternion.identity) as GameObject;
                ParticleSystem ps;
                ps = go.GetComponent<ParticleSystem>();
                ps.Play();
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
