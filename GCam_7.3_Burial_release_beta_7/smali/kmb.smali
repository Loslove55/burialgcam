.class public abstract Lkmb;
.super Lkma;


# instance fields
.field private a:Z


# direct methods
.method protected constructor <init>(Lkme;)V
    .locals 0

    invoke-direct {p0, p1}, Lkma;-><init>(Lkme;)V

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public final m()Z
    .locals 1

    iget-boolean v0, p0, Lkmb;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final n()V
    .locals 2

    invoke-virtual {p0}, Lkmb;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final o()V
    .locals 1

    invoke-virtual {p0}, Lkmb;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkmb;->a:Z

    return-void
.end method
