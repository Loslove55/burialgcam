.class Lcom/marco/postProcessing/Examples$2;
.super Ljava/lang/Object;
.source "Examples.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/marco/postProcessing/Examples;->buttonClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/marco/postProcessing/Examples;


# direct methods
.method constructor <init>(Lcom/marco/postProcessing/Examples;)V
    .locals 0

    iput-object p1, p0, Lcom/marco/postProcessing/Examples$2;->this$0:Lcom/marco/postProcessing/Examples;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/marco/postProcessing/Examples$2;->this$0:Lcom/marco/postProcessing/Examples;

    invoke-static {v1}, Lcom/marco/postProcessing/Examples;->access$000(Lcom/marco/postProcessing/Examples;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/marco/postProcessing/Examples$2;->this$0:Lcom/marco/postProcessing/Examples;

    invoke-static {p1}, Lcom/marco/postProcessing/Examples;->access$100(Lcom/marco/postProcessing/Examples;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v1, "examplesmoothen.jpg"

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    goto/16 :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/marco/postProcessing/Examples$2;->this$0:Lcom/marco/postProcessing/Examples;

    invoke-static {p1}, Lcom/marco/postProcessing/Examples;->access$100(Lcom/marco/postProcessing/Examples;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v1, "examplesharpen.jpg"

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    goto/16 :goto_1

    :pswitch_2
    iget-object p1, p0, Lcom/marco/postProcessing/Examples$2;->this$0:Lcom/marco/postProcessing/Examples;

    invoke-static {p1}, Lcom/marco/postProcessing/Examples;->access$100(Lcom/marco/postProcessing/Examples;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v1, "exampleblur.jpg"

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    goto/16 :goto_1

    :pswitch_3
    iget-object p1, p0, Lcom/marco/postProcessing/Examples$2;->this$0:Lcom/marco/postProcessing/Examples;

    invoke-static {p1}, Lcom/marco/postProcessing/Examples;->access$100(Lcom/marco/postProcessing/Examples;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v1, "examplesaturation.jpg"

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    goto/16 :goto_1

    :pswitch_4
    iget-object p1, p0, Lcom/marco/postProcessing/Examples$2;->this$0:Lcom/marco/postProcessing/Examples;

    invoke-static {p1}, Lcom/marco/postProcessing/Examples;->access$100(Lcom/marco/postProcessing/Examples;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v1, "examplesepia.jpg"

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    goto/16 :goto_1

    :pswitch_5
    iget-object p1, p0, Lcom/marco/postProcessing/Examples$2;->this$0:Lcom/marco/postProcessing/Examples;

    invoke-static {p1}, Lcom/marco/postProcessing/Examples;->access$100(Lcom/marco/postProcessing/Examples;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v1, "examplebrightness.jpg"

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    goto/16 :goto_1

    :pswitch_6
    iget-object p1, p0, Lcom/marco/postProcessing/Examples$2;->this$0:Lcom/marco/postProcessing/Examples;

    invoke-static {p1}, Lcom/marco/postProcessing/Examples;->access$100(Lcom/marco/postProcessing/Examples;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v1, "examplevignette.jpg"

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    goto :goto_1

    :pswitch_7
    iget-object p1, p0, Lcom/marco/postProcessing/Examples$2;->this$0:Lcom/marco/postProcessing/Examples;

    invoke-static {p1}, Lcom/marco/postProcessing/Examples;->access$100(Lcom/marco/postProcessing/Examples;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v1, "examplehist.jpg"

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    goto :goto_1

    :pswitch_8
    iget-object p1, p0, Lcom/marco/postProcessing/Examples$2;->this$0:Lcom/marco/postProcessing/Examples;

    invoke-static {p1}, Lcom/marco/postProcessing/Examples;->access$100(Lcom/marco/postProcessing/Examples;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v1, "exampleinvert.jpg"

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    goto :goto_1

    :pswitch_9
    iget-object p1, p0, Lcom/marco/postProcessing/Examples$2;->this$0:Lcom/marco/postProcessing/Examples;

    invoke-static {p1}, Lcom/marco/postProcessing/Examples;->access$100(Lcom/marco/postProcessing/Examples;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v1, "exampleround.jpg"

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    goto :goto_1

    :pswitch_a
    iget-object p1, p0, Lcom/marco/postProcessing/Examples$2;->this$0:Lcom/marco/postProcessing/Examples;

    invoke-static {p1}, Lcom/marco/postProcessing/Examples;->access$100(Lcom/marco/postProcessing/Examples;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v1, "example21by9.jpg"

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    goto :goto_1

    :pswitch_b
    iget-object p1, p0, Lcom/marco/postProcessing/Examples$2;->this$0:Lcom/marco/postProcessing/Examples;

    invoke-static {p1}, Lcom/marco/postProcessing/Examples;->access$100(Lcom/marco/postProcessing/Examples;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v1, "example16by9.jpg"

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    goto :goto_1

    :pswitch_c
    iget-object p1, p0, Lcom/marco/postProcessing/Examples$2;->this$0:Lcom/marco/postProcessing/Examples;

    invoke-static {p1}, Lcom/marco/postProcessing/Examples;->access$100(Lcom/marco/postProcessing/Examples;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v1, "example1by1.jpg"

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    move-object p1, v0

    :goto_1
    invoke-static {p1, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/marco/postProcessing/Examples$2;->this$0:Lcom/marco/postProcessing/Examples;

    invoke-static {v0}, Lcom/marco/postProcessing/Examples;->access$200(Lcom/marco/postProcessing/Examples;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
