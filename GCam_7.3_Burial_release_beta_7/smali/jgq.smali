.class public final Ljgq;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljhj;

.field public final b:Z

.field public final c:Landroid/app/KeyguardManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljhj;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ljgq;->a:Ljhj;

    iput-boolean p3, p0, Ljgq;->b:Z

    const-string p2, "keyguard"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Ljgq;->c:Landroid/app/KeyguardManager;

    return-void
.end method
