.class public Lcom/marco/postProcessing/Examples;
.super Ljava/lang/Object;
.source "Examples.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private buttonlayout:Landroid/widget/LinearLayout;

.field private buttons:[Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private final f15560a:Landroid/app/Activity;

.field private preview:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1:1 aspect ratio"

    const-string v1, "16:9 aspect ratio"

    const-string v2, "21:9 aspect ratio"

    const-string v3, "Round"

    const-string v4, "Invert"

    const-string v5, "Histogram equalization"

    const-string v6, "Vignette"

    const-string v7, "Brightness"

    const-string v8, "Sepia"

    const-string v9, "Saturation"

    const-string v10, "Blur"

    const-string v11, "Sharpen"

    const-string v12, "Smoothen"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/marco/postProcessing/Examples;->buttons:[Ljava/lang/String;

    iput-object p1, p0, Lcom/marco/postProcessing/Examples;->f15560a:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/marco/postProcessing/Examples;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/marco/postProcessing/Examples;->buttons:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/marco/postProcessing/Examples;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/marco/postProcessing/Examples;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/marco/postProcessing/Examples;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/marco/postProcessing/Examples;->preview:Landroid/widget/ImageView;

    return-object p0
.end method

.method private addButton(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/marco/postProcessing/Examples;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/marco/postProcessing/Examples;->buttonClickListener()Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/marco/postProcessing/Examples;->buttonlayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private buttonClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/marco/postProcessing/Examples$2;

    invoke-direct {v0, p0}, Lcom/marco/postProcessing/Examples$2;-><init>(Lcom/marco/postProcessing/Examples;)V

    return-object v0
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    iget-object p1, p0, Lcom/marco/postProcessing/Examples;->f15560a:Landroid/app/Activity;

    iput-object p1, p0, Lcom/marco/postProcessing/Examples;->context:Landroid/content/Context;

    new-instance p1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/marco/postProcessing/Examples;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/marco/postProcessing/Examples;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/marco/postProcessing/Examples;->preview:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/marco/postProcessing/Examples;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/marco/postProcessing/Examples;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/marco/postProcessing/Examples;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/marco/postProcessing/Examples;->preview:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/marco/postProcessing/Examples;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/marco/postProcessing/Examples;->buttonlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/marco/postProcessing/Examples;->buttonlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/marco/postProcessing/Examples;->buttonlayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, p0, Lcom/marco/postProcessing/Examples;->preview:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x3b6

    const/16 v4, 0x258

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/marco/postProcessing/Examples;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "exampleempty.jpg"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v1

    :goto_0
    invoke-static {v2, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v3, p0, Lcom/marco/postProcessing/Examples;->preview:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/marco/postProcessing/Examples;->buttons:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-direct {p0, v4}, Lcom/marco/postProcessing/Examples;->addButton(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/marco/postProcessing/Examples;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Examples"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance p1, Lcom/marco/postProcessing/Examples$1;

    invoke-direct {p1, p0}, Lcom/marco/postProcessing/Examples$1;-><init>(Lcom/marco/postProcessing/Examples;)V

    const-string v2, "Back"

    invoke-virtual {v1, v2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return v0
.end method
