

[
{train: "72C", frequency_in_minutes: 15, direction: "north"},
{train: "72D", frequency_in_minutes: 15, direction: "south"},
{train: "610", frequency_in_minutes: 5, direction: "north"},
{train: "611", frequency_in_minutes: 5, direction: "south"},
{train: "80A", frequency_in_minutes: 30, direction: "east"},
{train: "80B", frequency_in_minutes: 30, direction: "west"},
{train: "110", frequency_in_minutes: 15, direction: "north"},
{train: "111", frequency_in_minutes: 15, direction: "south"}
]


class train
  # Required & Special!!!
def initialize(train)
# "Instance Vrainariables"
@train = train
@awake = true
@tail   false
end


class frequency_in_minutes
# Required & Special!!!
def initialize(frequency_in_minutes)
# "Instance Variables"
@frequency_in_minutes = frequency_in_minutes
@awake      = true
@tail       = false
end


class direction
# Required & Special!!!
def initialize(direction)
# "Instance Variables"
@direction = direction
@awake      = true
@tail       = false
end



 Regular Instance Method
# READER

  def train
    @train
  end

#READER
  def frequency_in_minutes
    @frequency_in_minutes
  end

# READER
  def direction
    @direction
  end

WRITER
  def train=(train)
    @train = train
  end

  # WRITER
  def frequency_in_minutes=(frequency_in_minutes)
    @frequency_in_minutes = frequency_in_minutes
  end

  # WRITER
  def direction=(direction)
    @direction = direction
  end

  # Regular Instance Method
  def full_name
    "#{ first_name } #{ last_name }"
  end

  def greetings
    if @awake
      if @tail
        '(bounces away)'
      else
        "Hi, my name is #{ full_name }"
      end
    else
      'Zzzzz'
    end
  end
  def slumber
    @awake = false
  end

  def wake
    @awake = true
  end

  def mutate
    @tail = true
  end

end
