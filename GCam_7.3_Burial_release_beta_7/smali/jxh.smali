.class final synthetic Ljxh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljxr;


# direct methods
.method public constructor <init>(Ljxr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljxh;->a:Ljxr;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ljxh;->a:Ljxr;

    iget-object v1, v0, Ljxr;->d:Lllq;

    new-instance v2, Ljxm;

    invoke-direct {v2, v0}, Ljxm;-><init>(Ljxr;)V

    invoke-virtual {v1, v2}, Lllq;->a(Ljava/lang/Runnable;)V

    return-void
.end method
