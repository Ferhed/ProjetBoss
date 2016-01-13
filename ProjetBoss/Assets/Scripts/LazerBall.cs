﻿//This is free to use and no attribution is required
//No warranty is implied or given
using UnityEngine;
using System.Collections;

[RequireComponent(typeof(LineRenderer))]

public class LazerBall: MonoBehaviour
{

    public float laserWidth = 0.3f;
    public float noise = 1.0f;
    public float maxLength = 50.0f;
    public Color color = Color.red;


    LineRenderer lineRenderer;
    int length;
    public Vector3[] position;
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
        offset = transform.position;
        endEffect = GetComponentInChildren<ParticleSystem>();
        if (endEffect)
            endEffectTransform = endEffect.transform;
    }

    // Update is called once per frame
    void Update()
    {
        RenderLaser();
    }

    void RenderLaser()
    {

        //Shoot our laserbeam forwards!
        UpdateLength();

        //lineRenderer.SetColors(color, color);
        //Move through the Array
        for (int i = 1; i < length; i++)
        {
            if (i % 2 == 1)
            {
                //Set the position here to the current location and project it in the forward direction of the object it is attached to
                offset.x = Random.Range(-noise, noise);
                offset.y = Random.Range(-noise, noise);
                offset.z = Random.Range(-noise, noise);
                offset.Normalize();
                position[i] = offset*noise;
            }
            else
            {
                offset = myTransform.position;
            }
            position[0] = myTransform.position;

            lineRenderer.SetPosition(i, position[i]);


        }
        //lineRenderer.SetPosition(0, position[1]);

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