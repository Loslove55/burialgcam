.class final synthetic Lisl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lisq;

.field private final b:Z


# direct methods
.method public constructor <init>(Lisq;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lisl;->a:Lisq;

    iput-boolean p2, p0, Lisl;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lisl;->a:Lisq;

    iget-boolean v1, p0, Lisl;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lisq;->i:Lina;

    new-instance v2, Lism;

    invoke-direct {v2, v0}, Lism;-><init>(Lisq;)V

    invoke-interface {v1, v2}, Lina;->a(Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v0, Lisq;->p:Landroid/app/AlertDialog;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lisq;->i:Lina;

    new-instance v2, Lisn;

    invoke-direct {v2, v0}, Lisn;-><init>(Lisq;)V

    invoke-interface {v1, v2}, Lina;->b(Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v0, Lisq;->p:Landroid/app/AlertDialog;

    :goto_0
    iget-object v1, v0, Lisq;->p:Landroid/app/AlertDialog;

    new-instance v2, Liso;

    invoke-direct {v2, v0}, Liso;-><init>(Lisq;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, v0, Lisq;->p:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lisq;->p:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iget-object v0, v0, Lisq;->p:Landroid/app/AlertDialog;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_1
    return-void
.end method
