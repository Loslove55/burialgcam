.class final Linb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Linc;


# direct methods
.method public constructor <init>(Linc;)V
    .locals 0

    iput-object p1, p0, Linb;->a:Linc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.os.storage.action.MANAGE_STORAGE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Linb;->a:Linc;

    iget-object p2, p2, Linc;->a:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
