.class final synthetic Lblc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lblc;->a:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lblc;->a:Ljava/lang/Throwable;

    new-instance v1, Lbld;

    invoke-direct {v1, v0}, Lbld;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
