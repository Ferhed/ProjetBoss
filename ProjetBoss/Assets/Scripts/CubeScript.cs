using UnityEngine;
using System.Collections;

public class CubeScript : MonoBehaviour {

    public bool isAttach;
    public bool isFirst;

    public float rBomb;

    public string referent;

    bool canBeKill = false;
    bool goToHit = false;
    bool hit = false;
    float xScale;
    float zScale;
    float r = 0;
    float g = 0;
    float b = 0;
    Color firstColor;
    int maxTimerCheck;
    int timerCheck;
    int timerHit;
    int timerCheckIn;
    int maxTimerCheckIn;

	void Start () {
        referent = "none";
        maxTimerCheckIn = 10;
        timerCheckIn = maxTimerCheckIn;
        maxTimerCheck = 50;
        timerHit = 0;//50
        timerCheck = -1;
        xScale = this.gameObject.transform.localScale.x;
        zScale = this.gameObject.transform.localScale.z;
        firstColor = pickColor(r,g,b,true);
        //if (isFirst) { isAttach = true; }
	}

	void Update () {
        timerCheckIn--;
        if (canBeKill)
        {
            timerCheckIn = maxTimerCheckIn;
            this.gameObject.GetComponent<Renderer>().material.color = new Color(rBomb, 0, 0);
            canBeKill = false;
        }
        if (timerCheckIn < 0)
        {
            this.gameObject.GetComponent<Renderer>().material.color = firstColor;
        }
        if (goToHit) 
        {
            timerHit--;
            this.gameObject.GetComponent<Renderer>().material.color = pickColor(r, g, b, true);
        }
        if (timerHit < 0) { hit = true; }
        timerCheck--;
        if (timerCheck < 0 /*&& !isFirst*/) 
        {
            timerCheck = maxTimerCheck;
            search(this.gameObject.transform.position.x, this.gameObject.transform.position.z);
        }
        if (!isAttach /*&& !isFirst*/) { hit = true; }
        if (hit && this.gameObject.tag != "Wall") 
        {
            isAttach = false;
            isFirst = false;
            xScale -= 0.01f;
            zScale -= 0.01f;
            this.gameObject.transform.localScale = new Vector3(xScale, 0, zScale);
        }
        if (xScale < 0 || zScale < 0) 
        {
            Destroy(this.gameObject);
        }
	}

    void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.tag == "Explosion" && this.gameObject.tag == "Ground") 
        {
            goToHit = true;
        }
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Zone") { canBeKill = true; }
    }

    void OnTriggerStay(Collider other)
    {
        if (other.tag == "Zone") { canBeKill = true; }
    }

    Color pickColor(float r,float g,float b, bool toRand) 
    {
        if (toRand)
        {
            r = Random.Range(0f, 1f);
            g = Random.Range(0f, 1f);
            b = Random.Range(0f, 1f);   
        }
        return new Color(r, g, b);
    }

    void search(float x, float z) 
    {
        bool isOk = false;
        int count = 0;
        Vector3 right = new Vector3(x+1, 0, z);
        Vector3 left = new Vector3(x-1, 0, z);
        Vector3 up = new Vector3(x, 0, z+1);
        Vector3 down = new Vector3(x, 0, z-1);
        GameObject[] objs = GameObject.FindGameObjectsWithTag("Ground");
        foreach (GameObject go in objs)
        {
            if (go.transform.position == right || go.transform.position == left || go.transform.position == up || go.transform.position == down)
            {
                count++;
               // if (go.GetComponent<CubeScript>().isFirst || go.GetComponent<CubeScript>().isAttach)
               // {
                    //if (referent == "none" && go.GetComponent<CubeScript>().referent != this.gameObject.name)
                   // {
                if (count > 1) 
                {
                    referent = go.name;
                    isAttach = true;
                    isOk = true;
                    break;
                }
                        
                   // }
               // }
            }
        }
        if (!isOk) { isAttach = false; }
    }
}
