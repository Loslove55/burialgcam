.class final Lovm;
.super Ljava/lang/Object;


# static fields
.field static final a:Lovm;

.field static final b:Lovm;


# instance fields
.field final c:Z

.field final d:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Lovy;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lovm;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lovm;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lovm;->b:Lovm;

    new-instance v0, Lovm;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lovm;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lovm;->a:Lovm;

    return-void

    :cond_0
    sput-object v1, Lovm;->b:Lovm;

    sput-object v1, Lovm;->a:Lovm;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lovm;->c:Z

    iput-object p2, p0, Lovm;->d:Ljava/lang/Throwable;

    return-void
.end method
