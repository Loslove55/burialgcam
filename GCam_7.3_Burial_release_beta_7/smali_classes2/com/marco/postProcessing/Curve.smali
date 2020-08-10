.class public Lcom/marco/postProcessing/Curve;
.super Ljava/lang/Object;
.source "Curve.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private context:Landroid/content/Context;

.field private final f15560a:Landroid/app/Activity;

.field private points:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private prefix:Ljava/lang/String;

.field private preview:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/marco/postProcessing/Curve;->f15560a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/marco/postProcessing/Curve;->prefix:Ljava/lang/String;

    return-void
.end method

.method private getPoints()V
    .locals 12

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/marco/postProcessing/Curve;->points:Ljava/util/LinkedList;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pref_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/marco/postProcessing/Curve;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    const/16 v3, 0x258

    if-lez v0, :cond_0

    iget-object v4, p0, Lcom/marco/postProcessing/Curve;->points:Ljava/util/LinkedList;

    new-instance v5, Landroid/graphics/Point;

    mul-int/lit8 v0, v0, 0x6

    rsub-int v0, v0, 0x258

    invoke-direct {v5, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-gez v0, :cond_1

    iget-object v4, p0, Lcom/marco/postProcessing/Curve;->points:Ljava/util/LinkedList;

    new-instance v5, Landroid/graphics/Point;

    mul-int/lit8 v0, v0, -0x6

    invoke-direct {v5, v0, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/marco/postProcessing/Curve;->points:Ljava/util/LinkedList;

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/marco/postProcessing/Curve;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_b"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v0

    const/16 v5, 0x1f4

    const/16 v6, 0x64

    if-eq v0, v6, :cond_2

    iget-object v0, p0, Lcom/marco/postProcessing/Curve;->points:Ljava/util/LinkedList;

    new-instance v7, Landroid/graphics/Point;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/marco/postProcessing/Curve;->prefix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x6

    rsub-int v4, v4, 0x1f4

    invoke-direct {v7, v6, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/marco/postProcessing/Curve;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_c"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v0

    const/16 v7, 0x190

    const/16 v8, 0xc8

    if-eq v0, v6, :cond_3

    iget-object v0, p0, Lcom/marco/postProcessing/Curve;->points:Ljava/util/LinkedList;

    new-instance v9, Landroid/graphics/Point;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/marco/postProcessing/Curve;->prefix:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x6

    rsub-int v4, v4, 0x190

    invoke-direct {v9, v8, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/marco/postProcessing/Curve;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_d"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_4

    iget-object v0, p0, Lcom/marco/postProcessing/Curve;->points:Ljava/util/LinkedList;

    new-instance v9, Landroid/graphics/Point;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/marco/postProcessing/Curve;->prefix:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x6

    const/16 v10, 0x12c

    rsub-int v4, v4, 0x12c

    invoke-direct {v9, v10, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/marco/postProcessing/Curve;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_e"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_5

    iget-object v0, p0, Lcom/marco/postProcessing/Curve;->points:Ljava/util/LinkedList;

    new-instance v9, Landroid/graphics/Point;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/marco/postProcessing/Curve;->prefix:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x6

    sub-int/2addr v8, v4

    invoke-direct {v9, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/marco/postProcessing/Curve;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_f"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_6

    iget-object v0, p0, Lcom/marco/postProcessing/Curve;->points:Ljava/util/LinkedList;

    new-instance v7, Landroid/graphics/Point;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/marco/postProcessing/Curve;->prefix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x6

    sub-int/2addr v6, v4

    invoke-direct {v7, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/marco/postProcessing/Curve;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_g"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_7

    iget-object v1, p0, Lcom/marco/postProcessing/Curve;->points:Ljava/util/LinkedList;

    new-instance v4, Landroid/graphics/Point;

    mul-int/lit8 v0, v0, 0x6

    sub-int/2addr v3, v0

    invoke-direct {v4, v3, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    if-gez v0, :cond_8

    iget-object v1, p0, Lcom/marco/postProcessing/Curve;->points:Ljava/util/LinkedList;

    new-instance v2, Landroid/graphics/Point;

    mul-int/lit8 v0, v0, -0x6

    invoke-direct {v2, v3, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/marco/postProcessing/Curve;->points:Ljava/util/LinkedList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v3, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 12

    iget-object p1, p0, Lcom/marco/postProcessing/Curve;->f15560a:Landroid/app/Activity;

    iput-object p1, p0, Lcom/marco/postProcessing/Curve;->context:Landroid/content/Context;

    new-instance p1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/marco/postProcessing/Curve;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/marco/postProcessing/Curve;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/marco/postProcessing/Curve;->preview:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/marco/postProcessing/Curve;->preview:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x258

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    iget-object v3, p0, Lcom/marco/postProcessing/Curve;->prefix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0x62

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eq v4, v5, :cond_2

    const/16 v5, 0x67

    if-eq v4, v5, :cond_1

    const/16 v5, 0x72

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "r"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v2, v6

    goto :goto_0

    :cond_1
    const-string v4, "g"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v2, v0

    goto :goto_0

    :cond_2
    const-string v4, "b"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v2, v7

    :cond_3
    :goto_0
    if-eqz v2, :cond_6

    if-eq v2, v0, :cond_5

    if-eq v2, v7, :cond_4

    const/high16 v2, -0x1000000

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_4
    const v2, -0xffff01

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_5
    const v2, -0xff0100

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_6
    const/high16 v2, -0x10000

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-direct {p0}, Lcom/marco/postProcessing/Curve;->getPoints()V

    :goto_2
    iget-object v2, p0, Lcom/marco/postProcessing/Curve;->points:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    if-ge v6, v2, :cond_7

    iget-object v2, p0, Lcom/marco/postProcessing/Curve;->points:Ljava/util/LinkedList;

    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v4, v2

    iget-object v2, p0, Lcom/marco/postProcessing/Curve;->points:Ljava/util/LinkedList;

    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v5, v2

    iget-object v2, p0, Lcom/marco/postProcessing/Curve;->points:Ljava/util/LinkedList;

    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v2, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v6, v2

    iget-object v2, p0, Lcom/marco/postProcessing/Curve;->points:Ljava/util/LinkedList;

    invoke-virtual {v2, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v7, v2

    move-object v3, v9

    move-object v8, v10

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v6, v11

    goto :goto_2

    :cond_7
    const v2, -0x777778

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/marco/postProcessing/Curve;->points:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-virtual {v9, v4, v3, v5, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_8
    iget-object v2, p0, Lcom/marco/postProcessing/Curve;->preview:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/marco/postProcessing/Curve;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Preview"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance p1, Lcom/marco/postProcessing/Curve$1;

    invoke-direct {p1, p0}, Lcom/marco/postProcessing/Curve$1;-><init>(Lcom/marco/postProcessing/Curve;)V

    const-string v2, "Back"

    invoke-virtual {v1, v2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return v0
.end method
