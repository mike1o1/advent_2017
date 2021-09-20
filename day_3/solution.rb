class Day3
  attr_accessor :input

  def initialize(input)
    @input = process_input(input)
  end

  def problem_1
    grid = Array.new(size) { Array.new(size) }
    start = size / 2
    x = y = start

    dir = dirs[0]

    (input - 1).times do |i|
      grid[y][x] = i + 1

      next_dir = dirs[(dirs.index(dir) + 1) % dirs.length]
      x1, y1 = move(x, y, next_dir)

      dir = next_dir if grid[y1][x1].nil?

      x, y = move(x, y, dir)
    end

    (x - start).abs + (y - start).abs
  end

  def problem_2
    grid = Array.new(size) { Array.new(size) }
    start = size / 2
    x = y = start

    dir = dirs[0]

    input.times do |i|
      value = [x - 1, x, x + 1]
        .product([y - 1, y, y + 1])
        .map { |x, y| grid[y][x]}
        .compact
        .inject(&:+)

      value ||= 1
      grid[y][x] = value

      break if value > input

      next_dir = dirs[(dirs.index(dir) + 1) % dirs.length]
      x1, y1 = move(x, y, next_dir)

      dir = next_dir if grid[y1][x1].nil?

      x, y = move(x, y, dir)
    end

    grid[y][x]
  end

  private

  def process_input(input)
    input.split("\n").first.to_i
  end

  def size
    Math.sqrt(input).ceil
  end

  def dirs
    [:right, :up, :left, :down]
  end

  def move(x, y, direction)
    case direction
    when :right
      x += 1
    when :up
      y -= 1
    when :left
      x -= 1
    when :down
      y += 1
    end

    [x, y]
  end
end
