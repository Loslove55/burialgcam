.class synthetic Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$5;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $SwitchMap$com$google$android$apps$camera$uiutils$TypedThumbnailBitmap$ThumbnailType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Ljzg;->values()[Ljzg;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$5;->$SwitchMap$com$google$android$apps$camera$uiutils$TypedThumbnailBitmap$ThumbnailType:[I

    :try_start_0
    sget-object v1, Ljzg;->c:Ljzg;

    invoke-virtual {v1}, Ljzg;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$5;->$SwitchMap$com$google$android$apps$camera$uiutils$TypedThumbnailBitmap$ThumbnailType:[I

    sget-object v1, Ljzg;->b:Ljzg;

    invoke-virtual {v1}, Ljzg;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$5;->$SwitchMap$com$google$android$apps$camera$uiutils$TypedThumbnailBitmap$ThumbnailType:[I

    sget-object v1, Ljzg;->d:Ljzg;

    invoke-virtual {v1}, Ljzg;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$5;->$SwitchMap$com$google$android$apps$camera$uiutils$TypedThumbnailBitmap$ThumbnailType:[I

    sget-object v1, Ljzg;->e:Ljzg;

    invoke-virtual {v1}, Ljzg;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    :try_start_4
    sget-object v0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$5;->$SwitchMap$com$google$android$apps$camera$uiutils$TypedThumbnailBitmap$ThumbnailType:[I

    sget-object v1, Ljzg;->a:Ljzg;

    invoke-virtual {v1}, Ljzg;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    return-void

    :catch_4
    move-exception v0

    return-void
.end method
