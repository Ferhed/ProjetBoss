using UnityEngine;
using System.Collections;

public class PlayerLife : MonoBehaviour {

    public bool dead = false;

    public bool immmmmmmmmmortal = false;
    
    float fadeNumber;
    float fading; //0-1
    Renderer rend;

    public void Die()
    {
        if (!dead && !immmmmmmmmmortal)
        {
            dead = true;

            GetComponentInChildren<attrapperJeter>().looseItem();

            Invoke("LaunchAnim", 1f);
        }
    }


    void LaunchAnim()
    {
        AudioSource.PlayClipAtPoint(SoundManager.Instance.rire, BossManager.Instance.GetCurrentBoss().transform.position, 1f);
        UIManager.Instance.lauchDeathUI();
    }
    
    // Use this for initialization
    void Start()
    {
        fadeNumber = 0.025f;
        fading = 0.0f;
    }

	// Update is called once per frame
    void Update()
    {
        if (dead)
        {
            fading += fadeNumber;
            GameObject[] listHand = GameObject.FindGameObjectsWithTag("HandPart");
            foreach (GameObject part in listHand)
            {
                rend = part.GetComponent<Renderer>();
				/*Vector3 orig = rend.gameObject.GetComponentInParent<Transform>().position;
				rend.gameObject.GetComponent<Rigidbody>().AddExplosionForce(10f, orig, 10f);*/
                rend.material.SetFloat("_Treshold", fading);
            }
        }
    }

}
