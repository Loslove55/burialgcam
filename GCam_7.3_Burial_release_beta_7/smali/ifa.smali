.class final synthetic Lifa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lifr;


# direct methods
.method public constructor <init>(Lifr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lifa;->a:Lifr;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lifa;->a:Lifr;

    invoke-interface {v0}, Liex;->e()V

    return-void
.end method
