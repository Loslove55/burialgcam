.class public final Lcom/Visibility;
.super Ljava/lang/Object;
.source "Visibility.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ShowLog(Ljava/lang/String;I)V
    .locals 3

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v1, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static switchToMode(I)V
    .locals 1

    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 v0, 0x0

    invoke-static {v0}, Lcom/ButtonPixelBinning;->getVisibility(I)V

    invoke-static {v0}, Lcom/ButtonEXP;->getVisibility(I)V

    invoke-static {v0}, Lcom/ButtonPP;->getVisibility(I)V

    invoke-static {v0}, Lcom/ButtonLDR;->getVisibility(I)V

    return-void

    :pswitch_1
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/ButtonPP;->getVisibility(I)V

    return-void

    :pswitch_2
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/ButtonPixelBinning;->getVisibility(I)V

    invoke-static {v0}, Lcom/ButtonEXP;->getVisibility(I)V

    invoke-static {v0}, Lcom/ButtonPP;->getVisibility(I)V

    invoke-static {v0}, Lcom/ButtonLDR;->getVisibility(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
