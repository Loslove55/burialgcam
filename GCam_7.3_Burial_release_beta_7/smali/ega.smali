.class final synthetic Lega;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lbjz;


# direct methods
.method public constructor <init>(Lbjz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lega;->a:Lbjz;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lega;->a:Lbjz;

    invoke-interface {v0}, Lbjz;->Q()V

    return-void
.end method
