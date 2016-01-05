using UnityEngine;
using System.Collections;

public class SoundManager : MonoBehaviour {

    static SoundManager instance;
    public static SoundManager Instance
    {
        get
        {
            return instance;
        }
    }
    void Awake()
    {
        instance = this;
    }

    public AudioClip bossMusic;

    public AudioClip[] explosionsSounds;

    public AudioClip bumpSoundWall;
    public AudioClip bumpSoundBoss;

    public AudioClip throwSound;

    AudioSource source;
    
    public void PlaySound(GameObject target, AudioClip ac, float vol)
    {
        if (!target.GetComponent<AudioSource>())
        {
            source = target.AddComponent<AudioSource>();
        }
        else
        {
            source = target.GetComponent<AudioSource>();
        }
        source.clip = ac;
        source.volume = vol;
        source.loop = true;
        source.Play();
    }
}
