.class final synthetic Leea;
.super Ljava/lang/Object;

# interfaces
.implements Llum;


# instance fields
.field private final a:Lefa;


# direct methods
.method public constructor <init>(Lefa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leea;->a:Lefa;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Leea;->a:Lefa;

    iget-object v1, v0, Lefa;->t:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iget-object v0, v0, Lefa;->M:Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->removeListener(Lcom/google/android/apps/camera/bottombar/BottomBarListener;)V

    return-void
.end method
