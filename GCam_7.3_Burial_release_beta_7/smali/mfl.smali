.class final synthetic Lmfl;
.super Ljava/lang/Object;

# interfaces
.implements Llus;


# instance fields
.field private final a:Loye;


# direct methods
.method public constructor <init>(Loye;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmfl;->a:Loye;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lmfl;->a:Loye;

    check-cast p1, Loac;

    invoke-virtual {p1}, Loac;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Loac;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    invoke-virtual {v0, p1}, Loye;->b(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
