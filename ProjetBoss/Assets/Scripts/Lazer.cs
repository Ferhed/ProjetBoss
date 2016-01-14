//This is free to use and no attribution is required
//No warranty is implied or given
using UnityEngine;
using System.Collections;

[RequireComponent(typeof(LineRenderer))]

public class Lazer : MonoBehaviour
{

    public float laserWidth = 0.3f;
    public float noise = 1.0f;
    public float maxLength = 50.0f;
    public Color color = Color.red;


    LineRenderer lineRenderer;
    int length;
    Vector3[] position;
    //Cache any transforms here
    Transform myTransform;
    Transform endEffectTransform;
    //The particle system, in this case sparks which will be created by the Laser
    public ParticleSystem endEffect;
    Vector3 offset;


    // Use this for initialization
    void Start()
    {
        lineRenderer = GetComponent<LineRenderer>();
        lineRenderer.SetWidth(laserWidth, laserWidth);
        myTransform = transform;
        offset = new Vector3(0, 0, 0);
        endEffect = GetComponentInChildren<ParticleSystem>();
        if (endEffect)
            endEffectTransform = endEffect.transform;
    }

    // Update is called once per frame
    void Update()
    {
        RenderLaser();
    }
    public void Actionned()
    {
        float ratio = 0;
        while (ratio < 1)
        {
            ratio += Time.deltaTime/4;
            gameObject.transform.localScale = new Vector3(ratio / 10 * 7, ratio / 10 * 7, 0.7f);
        }
        gameObject.transform.localScale = new Vector3(0.7f, 0.7f, 0.7f);
    }

    void RenderLaser()
    {

        //Shoot our laserbeam forwards!
        UpdateLength();

        //lineRenderer.SetColors(color, color);
        //Move through the Array
        for (int i = 1; i < length; i++)
        {
            //Set the position here to the current location and project it in the forward direction of the object it is attached to
            offset.x = myTransform.position.x + i * myTransform.forward.x + Random.Range(-noise, noise);
            offset.y = i * myTransform.forward.y + Random.Range(-noise, noise) + myTransform.position.y;
            offset.z = i * myTransform.forward.z + Random.Range(-noise, noise) + myTransform.position.z;
            position[i] = offset;
            position[0] = myTransform.position;

            lineRenderer.SetPosition(i, position[i]);

        }
        lineRenderer.SetPosition(0, position[1]);
        
    }

    void UpdateLength()
    {
        //Raycast from the location of the cube forwards
        RaycastHit[] hit;
        hit = Physics.RaycastAll(myTransform.position, myTransform.forward, maxLength);
        int i = 0;
        while (i < hit.Length)
        {
            //Check to make sure we aren't hitting triggers but colliders
            if (!hit[i].collider.isTrigger)
            {
                length = (int)Mathf.Round(hit[i].distance) + 2;
                position = new Vector3[length];
                //Move our End Effect particle system to the hit point and start playing it
                if (endEffect)
                {
                    endEffectTransform.position = hit[i].point;
                    if (!endEffect.isPlaying)
                        endEffect.Play();
                }
                lineRenderer.SetVertexCount(length);
                return;
            }
            i++;
        }
        //If we're not hitting anything, don't play the particle effects
        if (endEffect)
        {
            if (endEffect.isPlaying)
                endEffect.Stop();
        }
        length = (int)maxLength;
        position = new Vector3[length];
        lineRenderer.SetVertexCount(length);


    }
}