.class public final enum Ljp/co/cyberagent/android/gpuimage/util/Rotation;
.super Ljava/lang/Enum;
.source "Rotation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljp/co/cyberagent/android/gpuimage/util/Rotation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljp/co/cyberagent/android/gpuimage/util/Rotation;

.field public static final enum NORMAL:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

.field public static final enum ROTATION_180:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

.field public static final enum ROTATION_270:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

.field public static final enum ROTATION_90:Ljp/co/cyberagent/android/gpuimage/util/Rotation;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    const/4 v1, 0x0

    const-string v2, "NORMAL"

    invoke-direct {v0, v2, v1}, Ljp/co/cyberagent/android/gpuimage/util/Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->NORMAL:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    new-instance v0, Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    const/4 v2, 0x1

    const-string v3, "ROTATION_90"

    invoke-direct {v0, v3, v2}, Ljp/co/cyberagent/android/gpuimage/util/Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->ROTATION_90:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    new-instance v0, Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    const/4 v3, 0x2

    const-string v4, "ROTATION_180"

    invoke-direct {v0, v4, v3}, Ljp/co/cyberagent/android/gpuimage/util/Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->ROTATION_180:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    new-instance v0, Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    const/4 v4, 0x3

    const-string v5, "ROTATION_270"

    invoke-direct {v0, v5, v4}, Ljp/co/cyberagent/android/gpuimage/util/Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->ROTATION_270:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    const/4 v5, 0x4

    new-array v5, v5, [Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    sget-object v6, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->NORMAL:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    aput-object v6, v5, v1

    sget-object v1, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->ROTATION_90:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    aput-object v1, v5, v2

    sget-object v1, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->ROTATION_180:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->$VALUES:[Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromInt(I)Ljp/co/cyberagent/android/gpuimage/util/Rotation;
    .locals 2

    if-eqz p0, :cond_4

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_3

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_2

    const/16 v0, 0x10e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x168

    if-ne p0, v0, :cond_0

    sget-object p0, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->NORMAL:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is an unknown rotation. Needs to be either 0, 90, 180 or 270!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->ROTATION_270:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    return-object p0

    :cond_2
    sget-object p0, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->ROTATION_180:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    return-object p0

    :cond_3
    sget-object p0, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->ROTATION_90:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    return-object p0

    :cond_4
    sget-object p0, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->NORMAL:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Ljp/co/cyberagent/android/gpuimage/util/Rotation;
    .locals 1

    const-class v0, Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    return-object p0
.end method

.method public static values()[Ljp/co/cyberagent/android/gpuimage/util/Rotation;
    .locals 1

    sget-object v0, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->$VALUES:[Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    invoke-virtual {v0}, [Ljp/co/cyberagent/android/gpuimage/util/Rotation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    return-object v0
.end method


# virtual methods
.method public asInt()I
    .locals 2

    sget-object v0, Ljp/co/cyberagent/android/gpuimage/util/Rotation$1;->$SwitchMap$jp$co$cyberagent$android$gpuimage$util$Rotation:[I

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10e

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown Rotation!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v0, 0xb4

    return v0

    :cond_2
    const/16 v0, 0x5a

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method
