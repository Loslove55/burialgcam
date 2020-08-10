.class public Lcom/marco/fixes/Checker;
.super Ljava/lang/Object;
.source "Checker.java"


# instance fields
.field private _currentOrientation:I

.field private _highestIndex:I

.field private _orientationHistory:[I

.field private _orientationIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/marco/fixes/Checker;->_orientationHistory:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/marco/fixes/Checker;->_highestIndex:I

    new-instance v0, Lcom/marco/fixes/Checker$1;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Lcom/marco/fixes/Checker$1;-><init>(Lcom/marco/fixes/Checker;Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method

.method static synthetic access$000(Lcom/marco/fixes/Checker;)I
    .locals 0

    iget p0, p0, Lcom/marco/fixes/Checker;->_orientationIndex:I

    return p0
.end method

.method static synthetic access$002(Lcom/marco/fixes/Checker;I)I
    .locals 0

    iput p1, p0, Lcom/marco/fixes/Checker;->_orientationIndex:I

    return p1
.end method

.method static synthetic access$008(Lcom/marco/fixes/Checker;)I
    .locals 2

    iget v0, p0, Lcom/marco/fixes/Checker;->_orientationIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/marco/fixes/Checker;->_orientationIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/marco/fixes/Checker;)I
    .locals 0

    iget p0, p0, Lcom/marco/fixes/Checker;->_highestIndex:I

    return p0
.end method

.method static synthetic access$102(Lcom/marco/fixes/Checker;I)I
    .locals 0

    iput p1, p0, Lcom/marco/fixes/Checker;->_highestIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/marco/fixes/Checker;)[I
    .locals 0

    iget-object p0, p0, Lcom/marco/fixes/Checker;->_orientationHistory:[I

    return-object p0
.end method

.method static synthetic access$300(Lcom/marco/fixes/Checker;)I
    .locals 0

    iget p0, p0, Lcom/marco/fixes/Checker;->_currentOrientation:I

    return p0
.end method

.method static synthetic access$302(Lcom/marco/fixes/Checker;I)I
    .locals 0

    iput p1, p0, Lcom/marco/fixes/Checker;->_currentOrientation:I

    return p1
.end method

.method static synthetic access$400(Lcom/marco/fixes/Checker;)I
    .locals 0

    invoke-direct {p0}, Lcom/marco/fixes/Checker;->getOrientation()I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/marco/fixes/Checker;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/marco/fixes/Checker;->orientationChanged(II)V

    return-void
.end method

.method private getOrientation()I
    .locals 5

    iget v0, p0, Lcom/marco/fixes/Checker;->_highestIndex:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/marco/fixes/Checker;->_orientationHistory:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    iget-object v0, p0, Lcom/marco/fixes/Checker;->_orientationHistory:[I

    iget v1, p0, Lcom/marco/fixes/Checker;->_highestIndex:I

    div-int/lit8 v2, v1, 0x2

    aget v2, v0, v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_1
    div-int/lit8 v2, v1, 0x2

    aget v2, v0, v2

    if-ne v2, v3, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    div-int/lit8 v1, v1, 0x2

    aget v3, v0, v1

    :goto_0
    return v3
.end method

.method private orientationChanged(II)V
    .locals 0

    invoke-direct {p0}, Lcom/marco/fixes/Checker;->getOrientation()I

    move-result p1

    sput p1, Lcom/marco/FixMarco;->orientation:I

    return-void
.end method
