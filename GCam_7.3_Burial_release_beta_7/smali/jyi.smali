.class final Ljyi;
.super Ljava/lang/Object;

# interfaces
.implements Lkeo;


# instance fields
.field final synthetic a:Lkhc;

.field final synthetic b:Lcom/google/android/apps/camera/bottombar/BottomBarController;


# direct methods
.method public constructor <init>(Lkhc;Lcom/google/android/apps/camera/bottombar/BottomBarController;)V
    .locals 0

    iput-object p1, p0, Ljyi;->a:Lkhc;

    iput-object p2, p0, Ljyi;->b:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lken;)Z
    .locals 4

    sget-object v0, Ljyl;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1e

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "DoubleTapListener onDoubleTap "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {v0}, Lijd;->b(Ljava/lang/String;)V

    sget-object v0, Lken;->a:Lken;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Ljyi;->a:Lkhc;

    invoke-interface {p1}, Lkhc;->i()V

    goto :goto_0

    :cond_0
    sget-object v0, Lken;->b:Lken;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Ljyi;->b:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->switchCamera()V

    goto :goto_0

    :cond_1
    sget-object v0, Lken;->c:Lken;

    if-ne p1, v0, :cond_2

    sget-object p1, Ljyl;->a:Ljava/lang/String;

    invoke-static {p1}, Lijd;->b(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x21

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid double tap action option "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
