.class public final Lhu;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:I

.field public final c:I

.field public final d:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljo;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lhu;->a:Landroid/net/Uri;

    iput p2, p0, Lhu;->b:I

    iput p3, p0, Lhu;->c:I

    iput-boolean p4, p0, Lhu;->d:Z

    return-void
.end method
