using UnityEngine;
using System.Collections;

public class attrapperJeter : MonoBehaviour {

    public bool handFull = false;
    public float distanceAttrappe = 2f;
    public float puissance = 10f;

    private Transform itemLink;
    private Camera camera;
	public float timerToLaunch = 0f;
	// Use this for initialization
	void Start () {
        camera = Camera.main;
        }
	// Update is called once per frame
	void Update () {
	
		if(Input.GetKeyDown(KeyCode.P))
		{
			UIManager.Instance.launchUI("Coucou Toi",50);
		}
		if (timerToLaunch != 0f) 
		{
			timerToLaunch =  Mathf.Max (0f, timerToLaunch-Time.deltaTime);
		}

		if((Input.GetMouseButtonDown(0) || Input.GetButtonDown("X_button_1"))&& itemLink == null)
        {

            Ray ray = Camera.main.ScreenPointToRay(new Vector2(Screen.width/2, Screen.height/2));
            RaycastHit hit;
           // if (Physics.Raycast(ray, out hit, distanceAttrappe))
            LayerMask mask = 1 << 8;
            Collider[] testItem = Physics.OverlapSphere((camera.transform.position + camera.transform.forward), 1.5f, mask);
            if(testItem.Length > 0)
            {

                Transform item = testItem[0].transform;
                testItem = null;
                if(item.tag == "Projectile" || item.tag == "Bomb")
                {
                    item.parent = transform;
                    item.GetComponent<Rigidbody>().isKinematic = true;
                    item.localPosition = new Vector3(-0.1f, -0.5f, 0.8f);
					item.localScale *= 0.5f;
					if (item.tag == "Bomb"){item.GetComponent<BombScript>().hasCatch();}
                    itemLink = item;
					timerToLaunch = 0.2f;
                }
            }
        }


        else if(Input.GetButtonDown("X_button_1") && itemLink != null && timerToLaunch == 0f)
        {
            Rigidbody rb = itemLink.GetComponent<Rigidbody>();
            rb.isKinematic = false;
            itemLink.parent = null;
			
			itemLink.localScale *= 2f;
            rb.AddForce(camera.transform.forward * puissance);
            itemLink = null;

        }
        else if(Input.GetButtonDown("X_button_1") && handFull == false)
        {
            //coup de poing
        }

	}

}
