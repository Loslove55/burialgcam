.class public Lcom/google/android/apps/cyclops/image/CyclopsPhotoWriter;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "cyclops"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static native writeToFile([B[BLcom/google/android/apps/cyclops/metadata/PanoMeta;Lcom/google/android/apps/cyclops/audio/AudioTrack;Ljava/lang/String;)Z
.end method
